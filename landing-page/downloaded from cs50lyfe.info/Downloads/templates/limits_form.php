<br/>
<form action="limits.php" method="post">
    <fieldset>
        <div>
            <select id="category_select" name="category_select">
                <?php
                    echo "<option value='blank' selected>select a category</option>";
                
                    // SQL command returns multidimensional array
                    foreach ($categories as $category)
                    {
                        foreach ($category as $name)
                        {
                            echo "<option value='" . $name . "'>" . $name . "</option>";
                        }
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


<?php /*<form action="limits.php" method="post">
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
        <div id="amount">
            <input name="limit" placeholder="0.00" type="text"/>
        </div>
        <div>
            <button type="submit">Create Limit</button>
        </div>
    </fieldset>
</form>
*/ ?>
