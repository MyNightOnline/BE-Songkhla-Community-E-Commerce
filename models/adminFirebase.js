const admin = require("firebase-admin")
const serviceAccount = require("../config/serviceAccountKey.json")
admin.initializeApp({
  credential: admin.credential.cert(serviceAccount),
  storageBucket: "skru-project-c1214.appspot.com",
})

module.exports = admin
