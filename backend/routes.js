const express = require('express');
const router = express.Router();
const Teacher = require(__dirname+'/teacher');
const Institute = require(__dirname+'/institute');

router.get('/inst', async (req, res) => {
    try {
        const institute = await Institute.find();
        res.json(institute);
    } catch (err) {
        res.send(err);
    }
});

router.get('/teach', async (req, res) => {
    try {
        const teachers = await Teacher.find();
        res.json(teachers);
    } catch(err) {
        res.send(err);
    }
});

router.get('/teach/:id', async(req, res) => {
    try {
        const teacher = await Teacher.findById(req.params.id);
        res.json(teacher);
    } catch (err) {
        res.send(err);
    }
});

router.get('/teach/inst/:id', async(req, res) => {
    try {
        console.log(req.params.id);
        l = []
        const teacher = await Teacher.findById(req.params.id);
        console.log(teacher["teacherAppliedInstitutes"]);
        for(var i=0; i<teacher["teacherAppliedInstitutes"].length; i++) {
            const institute = await Institute.findById(teacher["teacherAppliedInstitutes"][i]);
            l.push(institute);
        }
        res.json(l);
    } catch (err) {
        res.send(err);
    }
});

router.get('/inst/:id', async(req, res) => {
    try {
        const institute = await Institute.findById(req.params.id);
        res.json(institute);
    } catch (err) {
        res.send(err);
    }
});

router.get('/inst/teach/:id', async(req, res) => {
    try {
        console.log(req.params.id);
        l = []
        const institute = await Institute.findById(req.params.id);
        console.log(institute);
        console.log(institute["institutionApplications"]);
        for(var i=0; i<institute["institutionApplications"].length; i++) {
            const teacher = await Teacher.findById(institute["institutionApplications"][i]);
            l.push(teacher);
        }
        res.json(l);
    } catch (err) {
        res.send(err);
    }
});

router.patch('/teach/:id', async(req, res) => {
    try {
        console.log(req.params.id);
        console.log(req.body);
        const teacher = await Teacher.findById(req.params.id);
        l = teacher["teacherAppliedInstitutes"];
        console.log(l)
        newInstitute = await req.body.instituteID;
        console.log(newInstitute);
        console.log(teacher);
        l.push(newInstitute);
        console.log(l);
        console.log(teacher);
        const response = await teacher.save();
        const institute = await Institute.findById(newInstitute);
        console.log(institute);
        newl = institute["institutionApplications"];
        console.log(newl);
        newl.push(req.params.id);
        console.log(newl);
        console.log(institute);
        const newResponse = await institute.save();
        res.json([response, newResponse]);
    } catch (err) {
        res.send(err);
    }
});

router.patch('/inst/newSubject/:id', async (req, res) => {
    try {
        console.log(req.params.id);
        const institute = await Institute.findById(req.params.id);
        console.log(req.body);
        console.log(institute);
        console.log(typeof(institute));
        l = Object.values(institute)[2]["institutionRequests"];
        console.log(l);
        newSubject = await req.body.subject;
        console.log(newSubject);
        l.push(newSubject);
        console.log(l);
        const response = await institute.save();
        res.json(response);
    } catch (err) {
        res.send(err);
    }
});

module.exports = router;