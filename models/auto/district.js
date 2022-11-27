const db = require('../../config/db.config')
const axios = require('axios')

const checkDistrict = () => {
    db.query(`SELECT * FROM district`, async (err, results) => {
        if (err) {
            console.log(err)
        } else {
            if (results.length == 0) {
                console.log('ไม่มีอำเภอ\nกำลังเพิ่มข้อมูลอำเภอไปยัง Table "district"')
                const response = await axios.get('https://thaiaddressapi-thaikub.herokuapp.com/v1/thailand/provinces/%E0%B8%AA%E0%B8%87%E0%B8%82%E0%B8%A5%E0%B8%B2/district');

                for ( const district of response.data.data ) {
                    db.query(
                        `INSERT INTO district SET ?`,
                        [{ name: district }],
                        (err, results) => {
                            if (err) {
                                console.log(err)
                            } else {
                                if ( district === 'แม่ทอม') {
                                    console.log('success ADD')
                                }
                            }
                        }
                    )
                }
                checkDistrict()
            } else {
                console.log(results)
            }   
        }
    })
}

checkDistrict()