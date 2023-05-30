const express = require("express")
const router = express.Router()

const commuController = require("../controllers/commu.controller")

router.get("/", commuController.showCommu)
router.get("/confirmed", commuController.confirmed)
router.get("/pending-cf", commuController.pending)
router.get("/:id", commuController.showCommuById)
router.get("/v2/:id", commuController.showCommuById2)
router.post("/", commuController.createCommu)
router.put("/:id", commuController.updateCommu)
router.delete("/:id", commuController.deleteCommu)

module.exports = router
