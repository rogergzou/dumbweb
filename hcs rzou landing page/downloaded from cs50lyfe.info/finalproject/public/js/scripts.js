/**
 * scripts.js
 *
 * David Reading and Roger Zou CS50
 * Final Project: Save
 *
 * Global JavaScript
 */
 
// execute once window has loaded
$(window).load(function() {

    // listen for click on "other" radio button
    $("#other").change(function() {
        category();
    });
    
    // listen for change in category dropdown menu selection (for expense/limit input)
    $("#category_select").change(function() {
        change();
    });
    
    // listen for change in limit/expense comparison dropdown menu
    $("#comparison_dropdown").change(function() {
        view_comparison();
    });
    
    // listen for click on "Total spending over time" submit button
    $("#view_total_overtime").click(function() {
        view_total_overtime();
    });
    
    // listen for click on "Total spending in each category" submit button
    $("#view_category").click(function() {
        view_category();
    });
    
    // listen for change in category dropdown menu selection (for graph)
    $("#category_dropdown").change(function() {
        view_category_overtime();
    });
});

// alter HTML of expenses page when "other" radio button is pressed
function category()
{
    // add custom category option
    var html = "<input name='category_custom' placeholder='Category' type='text'/>";
    $("#category_custom").html(html);
    
    // reset chosen category on dropdown menu to default
    $("option:selected").prop("selected", false);
}

// alter HTML of expenses page when a category in dropdown menu is selected
function change()
{
    // deselect "other" radio button
    var html = "<input type='radio' name='other' value='other'>other</input>";
    $("#other").html(html);
    
    // clear custom category input field
    $("#category_custom").html("");
}

// display chart of total spending in each category (using chart.js library)
function view_category()
{
    // add HTML canvas tag
    var html = "<canvas id='myChart1' width='400' height='400'></canvas>"
    $("#chart_category").html(html);
    
    // instantitate chart class
    var ctx = $("#myChart1").get(0).getContext("2d");
    
    // declare data
    var data = {
            labels : (function() {
                // return categories array
                return categories;
            })(),
            datasets : [
                    {
                        data : (function() {
                            // return spending array
                            return spending;
                        })(),
                    }
            ]
    };
    
    // declare options
    var options = {
            scaleLineWidth : 1
    };
    
    // instantiate chart
    new Chart(ctx).Bar(data, options);
}

// display charts of spending in each category over time (using chart.js library)
function view_category_overtime()
{
    // add HTML canvas tag
    var html = "<canvas id='myChart2' width='400' height='400'></canvas>";
    $("#chart_category_overtime").html(html);
    
    // instantiate chart class
    var ctx = $("#myChart2").get(0).getContext("2d");
    
    // store selected category from dropdown menu
    var category = $("#category_dropdown").children(':selected').val();
    
    // return no graph when no expenses have been made
    if (all_categories_sum[category] == null)
    {
        $("#chart_category_overtime").html("You haven't spent anything in this category.");
        return;
    }
    
    // return no graph when only 1 month of expenses has been made
    // NB: it doesn't make sense to print a line graph over time when there is only one month of data
    if (Object.keys(all_categories_sum[category]).length == 1)
    {
        $("#chart_category_overtime").html("You only have one month of spending in this category.");
        return;
    }
    
    // declare data
    var data = {
            labels : (function() {
                // return category index (which is an array) of all_categories_monthly array
                return all_categories_monthly[category];
            })(),
            datasets : [
                    {
                        data : (function() {
                            // return category index (which is an array) of all_categories_sum array
                            return all_categories_sum[category];
                        })()
                    }
            ]
    };
    
    // declare options
    var options = {
            scaleLineWidth : 1
    };
    
    // instantiate chart
    new Chart(ctx).Line(data, options);
}

// display chart of comparison of spending to self-imposed limits over time
function view_comparison()
{
    // add HTML canvas tag
    var html = "<canvas id='myChart3' width='400' height='400'></canvas>";
    $("#chart_comparison").html(html);
    
    // instantiate chart class
    var ctx = $("#myChart3").get(0).getContext("2d");
    
    // store selected category from dropdown menu
    var category = $("#comparison_dropdown").children(':selected').val();
    
    // return no graph when no expenses have been made
    if (all_categories_sum[category] == null)
    {
        $("#chart_comparison").html("You haven't spent anything in this category.");
        return;
    }

    if (all_categories_monthly[category].length == 1)
    {
        var html_table = "<table><thead><th>" + all_categories_monthly[category][0] + "</th></thead>";
        html_table += "<tbody><td>" + all_categories_sum[category][0] + "</td></tbody></table>";
        $("#chart_comparison").html(html_table);
    }
    else
{
    // declare data
    var data = {
            labels : (function() {
                // return category index (which is an array) of all_categories_monthly array
                return all_categories_monthly[category];
            })(),
            datasets : [
                    {
                        data : (function() {
                            // return category index (which is an array) of all_categories_sum array
                            return all_categories_sum[category];
                        })()
                    }
            ]
    };
    
    // declare options
    var options = {
            scaleLineWidth : 1
    };
    
    // instantiate chart
    new Chart(ctx).Bar(data, options);
}
    
    // inform user of self-imposed monthly limit
    $("#table_comparison").html("Your limit is " + limits[category][0]);
    
    // open table tags
    var table_head = "<table><thead>";
    var table_body = "<tbody><tr>";
    
    // inform users when they are spending too much, too little, or the right amount
    for (var i = 0, n = all_categories_monthly[category].length; i < n; i++)
    {
        // if the user is spending too much (above limit)
        if (all_categories_sum[category][i] > limits[category][0])
        {
            table_head += "<th>" + all_categories_monthly[category][i] + "</th>";
            table_body += "<td>You're spending too much</td>";
        }
        // if the user is spending too little (below half of the limit)
        else if (all_categories_sum[category][i] / limits[category][0] < .5)
        {
            table_head += "<th>" + all_categories_monthly[category][i] + "</th>";
            table_body += "<td>You're spending too little</td>";
        }
        // if the user is spending the right amount (in between half the limit and the limit)
        else
        {
            table_head += "<th>" + all_categories_monthly[category][i] + "</th>";
            table_body += "<td>You're spending the right amount</td>";
        }
    }
    
    // close table tags
    table_head += "</thead>";
    table_body += "</tr></tbody>";
    var table_html = table_head + table_body + "</table>";
    
    // input table into HTML
    $("#recommendation").html(table_html);
}

// display chart of total spending over time
function view_total_overtime()
{
    var html = "<canvas id='myChart0' width='400' height='400'></canvas>";
    
    $("#chart_total_overtime").html(html);
    
    var ctx = $("#myChart0").get(0).getContext("2d");
    
    if (expenses_monthly.length == 0)
    {
        $("#chart_total_overtime").html("You haven't spent anything");
    }
    
    if (expenses_monthly.length == 1)
    {
        $("#chart_total_overtime").html("You only have one month of total spending");
    }
    
    var data = {
            labels : (function() {
                return expenses_monthly;
            })(),
            datasets : [
                    {
                        data : (function() {
                            return sum;
                        })()
                    }
            ]
    };
    
    var options = {
            scaleLineWidth : 1
    };
    
    new Chart(ctx).Line(data, options);
}
