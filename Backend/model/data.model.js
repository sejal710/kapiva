const mongoose = require('mongoose');

const dataSchema = mongoose.Schema({
  title: { type: String, required: true},
  description: { type: String, required: true },
},{
  versionKey:false
});

const dataModel = mongoose.model('Data', dataSchema);

module.exports = {dataModel};