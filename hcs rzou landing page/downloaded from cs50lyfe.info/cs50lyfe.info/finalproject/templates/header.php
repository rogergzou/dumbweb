<!DOCTYPE html>

<html>

    <head>

        <link href="/finalproject/public/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="/finalproject/public/css/bootstrap-theme.min.css" rel="stylesheet"/>

        <?php if (isset($title)): ?>
            <title>Save: <?= htmlspecialchars($title) ?></title>
        <?php else: ?>
            <title>Save</title>
        <?php endif ?>

        <script src="/finalproject/public/js/jquery-1.10.2.min.js"></script>
        <script src="/finalproject/public/js/bootstrap.min.js"></script>
        <script src="/finalproject/public/js/scripts.js"></script>
        <script src="/finalproject/public/js/Chart.min.js"></script>

    </head>
<style>

#top, #middle, #bottom {
text-align:center;"
}

body {
/*background-image:url('/img/cofback.jpg');*/
background-image:url('http://1.bp.blogspot.com/_w0r3cYUSD7A/SrbWEoeK5eI/AAAAAAAAB1g/7pIN_-6v9JE/s1600/CoffeeShop%2BVintage%2BGreen%2Bbackground%2Bweb.jpg');
}

#top {
background-color: #fff;
}

#middle {
}

#bottom {
border-top-style:solid;
border-top-color: #000;
padding: 10px;
margin: 10px;
font-size: .75em;
}

.index-list ul {
list-style-type:none;

}

.index-list ul li {
font-weight:bold;
font-size: 2em;
padding: 4px;

}

.index-bottom-save-message
{
    color:#f00;
    font-size:1.25em;
}

.ngraphs {
float:left;
display:inline-block;
min-width:400px;
min-height:475px;
}

.kgraphs {
float:right;
display:inline-block;
min-width:400px;
min-height:475px;
}

.lgraphs{
display:inline-block;
float:center;
margins:auto;
display:inline-block;
}

table {
border: 3px solid black;
margin-left: auto;
margin-right: auto;

}
table thead th {
font-weight:bold;
font-size:3em;
border: 2px solid black;
border-bottom: 4px solid black;
padding: 3px 10px;
}

table tbody tr td {
font-size:1.25em;
border: 2px solid black;'
padding: 1px 3px;

}

#view_total {
margin-right: 40px;
}

input[type=text] {
height:34px;
}

select {
height:30px;
min-width:242px;
}

button[type=submit] {
width:184px;
height:52px;
}
</style>

        <div>

               <div id="top" style="text-align:center;">
                <a href="/"><img src="http://upload.wikimedia.org/wikipedia/commons/3/3f/Logo_SAVE.JPG" alt="Save" height="90" width="182"></a>
            </div>

            <div id="middle">
