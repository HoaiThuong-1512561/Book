var express = require('express');
var bodyParser = require('body-parser');
var exphbs = require('express-handlebars');
var express_handlebars_sections = require('express-handlebars-sections');
var wnumb = require('wnumb');

var path = require('path');

var handleLayoutMDW = require('./middle-wares/handleLayout'),
    handle404MDW = require('./middle-wares/handle404');

   

var SPController = require('./Controllers/SPController');
var HomeController = require('./Controllers/HomeController');
var ProductController = require('./Controllers/ProductController');
var accountController = require('./Controllers/accountController');

var app = express();
var session = require('express-session');
var MySQLStore = require('express-mysql-session')(session);

//session
var sessionStore = new MySQLStore({
    host: 'db4free.net',
    port: 3306,
    user: 'doanwebck',
    password: 'doanwebck',
    database: 'doanwebck',
    createDatabaseTable: true,
    schema: {
        tableName: 'sessions',
        columnNames: {
            session_id: 'session_id',
            expires: 'expires',
            data: 'data'
        }
    }
});
app.use(session({
    key: 'session_cookie_name',
    secret: 'session_cookie_secret',
    store: sessionStore,
    resave: false,
    saveUninitialized: false
}));





app.engine('hbs', exphbs({
    defaultLayout: 'main',
    extname: 'hbs',
    layoutsDir: 'views/_layouts',
    helpers: {
        section: express_handlebars_sections(),
        number_format: n => {
            var nf = wnumb({
                thousand: ','
            });
            return nf.to(n);
        }
    }
}));
app.set('view engine', 'hbs');
app.set('views', path.join(__dirname, "views"));
app.use(express.static(path.resolve(__dirname, 'public')));

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: false
}));


app.use('/', HomeController);
app.use('/sample_product', ProductController);
app.use('/SP', SPController);

app.use('/account', accountController);
app.listen(3001);
