<div>
    <script>
        // encode PHP associate arrays as JavaScript arrays to be used in scripts.js
        // NB: all these arrays are directly used in the chart labels and data inputs in scripts.js
        var expenses_monthly = <?php echo json_encode($expenses_monthly); ?>;
        var sum = <?php echo json_encode($sum); ?>;
        var categories = <?php echo json_encode($categories); ?>;
        var spending = <?php echo json_encode($spending); ?>;
        var all_categories_monthly = <?php echo json_encode($all_categories_monthly); ?>;
        var all_categories_sum = <?php echo json_encode($all_categories_sum); ?>;
        var limits = <?php echo json_encode($limits); ?>;
    </script>
</div>
<br/>
<span>
<div class="ngraphs">
    <button id="view_total_overtime" type="submit">Total Spending over Time</button>

<div id="chart_total_overtime"></div>
<br/>
</div>
<div class="kgraphs">
    <button id="view_category" type="submit">Total Spending in Each Category</button>

<div id="chart_category"></div>
<br/>
</div>
<div class="lgraphs">
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
<br/>
</span>
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
<br/>
<div>
<a href="graphs.php"><input type="button" value="Reset"></a>
</div>
</div>

<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
