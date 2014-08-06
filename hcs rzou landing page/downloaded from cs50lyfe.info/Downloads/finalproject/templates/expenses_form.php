<br/>
<form action="expenses.php" method="post">
    <fieldset>
        <div>
            <select id="category_select" name="category_select">
                <?php
                    echo "<option value='blank' selected>select a category</option>";
                    
                    foreach ($categories as $category)
                    {
                        echo "<option value='" . $category . "'>" . $category . "</option>";
                    }
                ?>
            </select>
        </div>  
        <div id="other">
            <input type="radio" name="other" value="other">other</button>
        </div>
        <div id="category_custom"></div>
	<br/>        
<div id="amount">
           $<input name="expense" placeholder="0.00" type="text"/>
        </div>
<br/>
        <div>
            <button type="submit">Submit Expense</button>
        </div>
    </fieldset>
</form>
<br/>
