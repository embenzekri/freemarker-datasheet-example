<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Hello ${name}!</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/main.css" rel="stylesheet">
    <link href="https://handsontable.com/docs/1.14.1/components/handsontable/dist/handsontable.full.css"
          rel="stylesheet">
</head>
<body>
<body>
<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Freemarker Spreadsheet Example</a>
</nav>

<div class="container-fluid">
    <div class="row">
        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
            <div class="d-flex justify-content-between flex-wrap ">
                <h2>Example of table using Freemarkrer as server side template </h2>
                <h2>and Handsontable as Javascript library for spreadsheet like features.</h2>
                <p>
                    <a href="https://freemarker.apache.org/" target="_blank">freemarker.apache.org</a> to learn more
                    about
                    Freemarker.
                </p>
                <p>
                    <a href="https://handsontable.com" target="_blank">handsontable.com</a> to learn more about
                    Handsontable.
                </p>
            </div>
            <div id="example"></div>
        </main>
    </div>
</div>
<script src="/js/bootstrap.min.js"></script>
<script src="https://handsontable.com/docs/1.14.1/components/handsontable/dist/handsontable.full.js"/>
<script src="/js/main.js"></script>
<script>
    var data = [
        ['Education and Training', 'Employment'],
        ['Job Seeking', 'Employment'],
        ['Self Employment', 'Employment'],
        ['Support for Offenders', 'Employment'],
        ['Transition', 'Employment'],
        ['Volunteering', 'Employment'],
        ['Drug and Alcohol Services', 'Family and Communities'],
        ['GPs - East of England', 'Family and Communities'],
        ['GPs - London', 'Family and Communities'],
        ['GPs - London', ' GPs - North East']
    ];

    var container = document.getElementById('example');

    var headers = ['TextColumn', 'DropdownListColumn'];

    new Handsontable(container, {
        data: data,
        minSpareCols: 1,
        minSpareRows: 1,
        rowHeaders: true,
        colHeaders: headers,
        contextMenu: true,
        columns: [
            {},
            {
                editor: 'select',
                selectOptions: ['Employment', 'Family and Communities']
            }
        ]
    });
</script>
</body>
</html>