require('dotenv').config()

const express = require('express');
const {  dbTest } = require('./database.js');
const postModel = require('./PostModel.js');

const app = express()
const PUERTO = process.env.PUERTO

//configuarar ejs como motor de plantilla
app.set('view engine', 'ejs');

app.use(express.json());
app.use(express.urlencoded({extended:true}));

app.get('/', async function (req, res) {
    const posteos = await postModel.findAll();
    res.render('inicio', { posteos })
 
})

app.get('/agregar', function (req, res) {
    res.render('agregar')
 
})

app.post('/agregar', async function (req, res) {
    console.log(req.body)

    const {titulo, contenido, fecha} = req.body
try {
    const nuevoPost = await postModel.create({
        titulo:titulo,
        contenido:contenido,
        imagen:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZ6_GLt3oyEeqvgJYl3dU7HeLuMtvYHFkKWOpFK6H8D6j8Vv6wuhN_Fo3GXJeQPZ3p5ng&usqp=CAU',
        fechacrea:fecha
    });
    if (nuevoPost) {
        res.redirect('/');
    } else {
        res.send('No se puedo agregar un nuevo post')
    }
    
        
} catch (error) {
    res.send('se produjo un error al cargar un posteo: ' + error)
}

 
})

app.get('/eliminar/:id', async function (req, res) {
    const {id} = req.params;

    try {
        const borrarPost = await postModel.destroy({
            where: {
                id: id
            }
            
        })
        
        if (borrarPost) {
            res.redirect('/');
        } else {
            res.send('No se pudo Eliminar el post')
        }
    } catch (error) {
        res.send('Se produjoo un error al eliminar el post'+ error)
    }   
 
})

app.get('/editar/:id',async function (req, res) {
    const {id} = req.params;
    try {
        const titulo = await postModel.findOne({ 
            where: {
                id: id
            }
        })
        if (titulo) {
            res.render('editar', { titulo: titulo})
        } else {
            res.send('No se pudo Encontrar el post')
        }
        
    } catch (error) {
        res.send('Se produjo un error al editar el post' + error)
    }
   
 
})



app.post('/editar/:id',async function (req, res) {
    const {id} = req.params;
    const {titulo, contenido} = req.body
    try {
        const tituloactualizado = await postModel.update({
            titulo: titulo,
            contenido: contenido
        }, { 
            where: {
                id: id
            }
        })
        if (tituloactualizado) {
            res.redirect('/')
        } else {
            res.send('No se pudo Actualizar el post')
        }
        
    } catch (error) {
        res.send('Se produjo un error al actualizar el post' + error)
    }
   
 
})
dbTest();

app.listen(PUERTO, () =>{
    console.log(`El puerto esta conectado en el puerto ${PUERTO}`)
})