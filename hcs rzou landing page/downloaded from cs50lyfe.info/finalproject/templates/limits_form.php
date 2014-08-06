<br/>
<form action="limits.php" method="post">
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
<br/>
        <div id="amount">
           $<input name="limit" placeholder="0.00" type="text"/>
        </div>
<br/>   
     <div>
            <button type="submit">Create Limit</button>
        </div>
    </fieldset>
</form>
<br/>
