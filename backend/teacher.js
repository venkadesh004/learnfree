const mongoose = require('mongoose');

const teacherSchema = new mongoose.Schema({
    teacherName: {
        type: String,
        required: true
    },
    teacherVerified: {
        type: Boolean,
        default: false
    },
    teacherPhone: {
        type: String,
        required: true
    },
    teacherSubjects: {
        type: Array,
        required: true
    },
    teacherAppliedInstitutes: {
        type: Array,
        default: []
    }
});

module.exports = mongoose.model('Teacher', teacherSchema);