/**
 * scripts.js
 *
 * Computer Science 50
 * Problem Set 7
 *
 * Global JavaScript, if any.
 */
 
 $(window).load(function() {

    $("#other").change(function() {
        category();
    });
    
    $("#category_select").change(function() {
        change();
    });
    
    $("#comparison_dropdown").change(function() {
        view_comparison();
    });
    
    $("#view_total_overtime").click(function() {
        view_total_overtime();
    });
    
    $("#view_category").click(function() {
        view_category();
    });
    
    $("#category_dropdown").change(function() {
        view_category_overtime();
    });
});

function category()
{
    var html = "<input name='category_custom' placeholder='Category' type='text'/>";
    
    $("#category_custom").html(html);
    
    $("option:selected").prop("selected", false);
}

function change()
{
    var html = "<input type='radio' name='other' value='other'>other</input>";
    
    $("#other").html(html);
    $("#category_custom").html("");
}

function view_category()
{
    var html = "<canvas id='myChart1' width='400' height='400'></canvas>"
    
    $("#chart_category").html(html);
    
    var ctx = $("#myChart1").get(0).getContext("2d");
    
    var data = {
            labels : (function() {
                return categories;
            })(),
            datasets : [
                    {
                        data : (function() {
                            return spending;
                        })(),
                    }
            ]
    };
    
    var options = {
            scaleLineWidth : 1
    };
    
    new Chart(ctx).Bar(data, options);
}

function view_category_overtime()
{
    var html = "<canvas id='myChart2' width='400' height='400'></canvas>";
    
    $("#chart_category_overtime").html(html);
    
    var ctx = $("#myChart2").get(0).getContext("2d");
    
    var category = $("#category_dropdown").children(':selected').val();
    
    if (all_categories_sum[category] == null)
    {
        $("#chart_category_overtime").html("You haven't spent anything in this category.");
        return;
    }
    if (Object.keys(all_categories_sum[category]).length == 1)
    {
        $("#chart_category_overtime").html("You only have one month of spending in this category.");
        return;
    }
    
    var data = {
            labels : (function() {
                return all_categories_monthly[category];
            })(),
            datasets : [
                    {
                        data : (function() {
                            return all_categories_sum[category];
                        })()
                    }
            ]
    };
    
    var options = {
            scaleLineWidth : 1
    };
    
    new Chart(ctx).Line(data, options);
}

function view_comparison()
{
    var html = "<canvas id='myChart3' width='400' height='400'></canvas>";
    
    $("#chart_comparison").html(html);
    
    var category = $("#comparison_dropdown").children(':selected').val();
    
    if (all_categories_sum[category] == null)
    {
        $("#chart_comparison").html("You haven't spent anything in this category.");
        return;
    }
    
    var bar = new RGraph.Bar('myChart3', all_categories_sum[category]);
    bar.Set('chart.labels', all_categories_monthly[category]);
    
    if (all_categories_sum[category].length == 1)
    {
        $("#table_comparison").html("Your limit is " + limits[category][0]);
        bar.Draw();
    }
    else
    {
        var line = new RGraph.Line('myChart3', limits[category]);

        var combo = new RGraph.CombinedChart(bar, line);
        combo.Draw();
    }
    
    var table_head = "<table><thead>";
    var table_body = "<tbody><tr>";
    
    for (var i = 0, n = all_categories_monthly[category].length; i < n; i++)
    {
        if (all_categories_sum[category] > limits[category])
        {
            table_head += "<th>" + all_categories_monthly[category][i] + "</th>";
            table_body += "<td>You're spending too much</td>";
        }
        else if (all_categories_sum[category] / limits[category] < .5)
        {
            table_head += "<th>" + all_categories_monthly[category][i] + "</th>";
            table_body += "<td>You're spending too little</td>";
        }
        else
        {
            table_head += "<th>" + all_categories_monthly[category][i] + "</th>";
            table_body += "<td>You're spending the right amount</td>";
        }
    }
    
    table_head += "</thead>";
    table_body += "</tr></tbody>";
    var table_html = table_head + table_body + "</table>";
    
    $("#recommendation").html(table_html);
    
    $("#explanation").html("Red line on graph represents your self-imposed limit");
}

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
