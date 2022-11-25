const bcrypt = require('bcrypt');
const saltRounds = 10;
const myPlaintextPassword = 's0/\/\P4$$w0rD';
const someOtherPlaintextPassword = 'not_bacon';

bcrypt.hash(myPlaintextPassword, saltRounds, (err, result) => {
    console.log(result)
})

bcrypt.compare(myPlaintextPassword, '$2b$10$T/6zGsFwPasP7vKoEFz3Z.gh/pXNbmKM8I1kOLxX.U.3w7Jlc8uIa', (err, result) => {
    console.log(result)
})