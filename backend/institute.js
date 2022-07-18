const mongoose = require('mongoose');

const institutionSchema = new mongoose.Schema({
    instituteName: {
        type: String,
        required: true
    },
    instituteVerfied: {
        type: Boolean,
        default: false
    },
    institutePhone: {
        type: String,
        required: true
    },
    instituteAddress: {
        type: String,
        required: true
    },
    institutionApplications: {
        type: Array,
        default: []
    }
});

module.exports = mongoose.model('Institute', institutionSchema);