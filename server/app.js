const express = require('express'), app = express();

app.listen(3000, () => console.log("server 3000"));

app.use(express.json());
app.use(express.urlencoded({express: false}));

app.get('/',  (req, res) => {
    res.json('Hello World!');
  });

app.get('/list', (req, res) => {
    let list = [
        {
            'name' : 'Container : 컨테이너 위젯'
        },
        {
            'name' : 'Text : 텍스트 위젯'
        }
    ];
    res.json(list);
})