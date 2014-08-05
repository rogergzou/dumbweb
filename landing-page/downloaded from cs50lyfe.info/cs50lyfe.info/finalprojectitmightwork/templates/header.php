<!DOCTYPE html>

<html>

    <head>

        <link href="/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="/css/bootstrap-theme.min.css" rel="stylesheet"/>
        <link href="/css/styles.css" rel="stylesheet"/>

        <?php if (isset($title)): ?>
            <title>Save: <?= htmlspecialchars($title) ?></title>
        <?php else: ?>
            <title>Save</title>
        <?php endif ?>

        <script src="/js/jquery-1.10.2.min.js"></script>
        <script src="/js/bootstrap.min.js"></script>
        <script src="/js/scripts.js"></script>
        <script src="/js/Chart.min.js"></script>
        <script src="/js/RGraph.common.core.js"></script>
        <script src="/js/RGraph.bar.js"></script>
        <script src="/js/RGraph.line.js"></script>

    </head>

    <body>

        <div>

            <div id="top">
                Save
            </div>

            <div id="middle">
