/**
 * Created by Tim on 9/22/2014.
 */
var keystone = require('keystone'),
    User = keystone.list('User');

exports = module.exports = function(done) {
    new User.model({
        name: { first: 'Timothy', last: 'Munnerley' },
        email: 'ian5015@live.com',
        password: 'sadman99',
        isAdmin: true
    }).save(done);
};