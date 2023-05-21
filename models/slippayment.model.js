const db = require("../config/db.config")
const table = "payment"
const admin = require("./adminFirebase")

const getSlipPayments = (result) => {
  db.query(`SELECT * FROM ${table}`, (err, results) => {
    if (err) {
      console.log(err)
      result(err, null)
    } else {
      result(null, results)
    }
  })
}

const insertSlipPayment = async (req, result) => {
  const files = req.files
  try {
    // Upload each file to Firebase Storage
    const urls = await Promise.all(
      Object.values(files).map(async (file) => {
        const bucket = admin.storage().bucket()
        const { originalname } = file[0]
        const newFileName = `slip/${Date.now()}_${originalname}`
        const fileRef = bucket.file(newFileName)

        await fileRef.save(file[0].buffer, {
          contentType: file[0].mimetype,
        })

        // Get download URL for the uploaded file
        return await fileRef.getSignedUrl({
          action: "read",
          expires: "03-17-2024",
        })
      })
    )

    // Send the download URLs as a response
    req.body.payment_image = urls[0][0]
    req.body.order_id = 14
    db.query(`INSERT INTO ${table} SET ?`, [req.body], (err, results) => {
      if (err) {
        console.log(err)
        result(err, null)
      } else {
        console.log("upload success")
        result(null, results)
      }
    })
  } catch (error) {
    console.error(error)
  }
}

module.exports = {
  getSlipPayments,
  insertSlipPayment,
}
