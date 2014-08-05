<div>
    <script>
        var expenses_monthly = <?php echo json_encode($expenses_monthly); ?>;
        var sum = <?php echo json_encode($sum); ?>;
        var categories = <?php echo json_encode($categories); ?>;
        var spending = <?php echo json_encode($spending); ?>;
        var all_categories_monthly = <?php echo json_encode($all_categories_monthly); ?>;
        var all_categories_sum = <?php echo json_encode($all_categories_sum); ?>;
        var limits = <?php echo json_encode($limits); ?>;
    </script>
</div>
<div>
    <button id="view_total_overtime" type="submit">Total Spending over Time</button>
</div>
<div id="chart_total_overtime"></div>
<div>
    <button id="view_category" type="submit">Total Spending in Each Category</button>
</div>
<div id="chart_category"></div>
<div>
    Monthly Spending for Each Category
</div>
<div>
    <select id="category_dropdown" name="category_dropdown">
        <?php
            echo "<option value='blank' selected>select a category</option>";
            
            foreach ($categories as $category)
            {
                echo "<option value='" . $category . "'>" . $category . "</option>";
            }
        ?>
    </select>
</div>
<div id="chart_category_overtime"></div>
<div>
    Comparison Between Limits and Expenses
</div>
<div>
    <select id="comparison_dropdown" name="comparison_dropdown">
        <?php
            echo "<option value='blank' selected>select a category</option>";
            
            foreach ($categories as $category)
            {
                echo "<option value='" . $category . "'>" . $category . "</option>";
            }
        ?>
    </select>
</div>
<div id="chart_comparison"></div>
<div id="table_comparison"></div>
<div id="explanation"></div>
<div id="recommendation"></div>
