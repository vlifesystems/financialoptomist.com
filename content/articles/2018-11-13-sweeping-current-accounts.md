Our expenses will rarely be the same from one month to the next and therefore there will be times when our current account has 'excess' money in it.  If we are keeping to a budget and at times manage to spend less than we were expecting.  It is useful to look at our current account each month and decide if there is more money in there than we need for the moment and transfer the excess to a savings account that would remove the temptation to spend it and where we could also earn better interest.


## How Much Should We Keep in Our Current Account?
It can be useful to keep part of our emergency fund in the current account for immediate access and also to ensure our expense requirements are met from one month to the next without going overdrawn.  As a general rule 2 months normal expenses is often enough as a minimum to keep in the current account.

If we have a high interest current account, it would probably make sense to have at least the minimum on which you can get that high interest rate kept in the account.  This is typically the first £2,000 or so.  We have to make the decision as to how big a temptation it is to spend the excess money in the account and where we could make better use of it in terms of return.

## Where to Put the Swept Money?
It is worth creating some [SMART saving](/articles/smart-saving/) goals so that we know where best to put our money.  We might decide to make sure that our emergency fund is sufficient to start with, this could be split between the current account and an easy access savings account.  Next we might want to put any excess money into longer term savings such as for a house deposit or retirement.  Alternatively we may want to save for a nearer time goal such as a holiday.  This will determine where we put our money and how easily we need to access it.

## How to Manually Sweep the Current Account?
Once we have determined the minimum amount we want in our current account, we should check it once a month and decide if the current account has excess money in it.   A good time to do this is at the point in the month when our account is at its highest, normally just after pay day.

This can be done by subtract the following from the most recent account's balance:
* The most recent pay
* Any extra expenses coming up that will be coming from this account such as Christmas, a holiday, etc
* The minimum current account amount


If the final amount is above 0 then transfer it into whichever account we have decided for our plan.

<br />
To put this another way:
<br />

    b = Highest current account balance in month
    p = Most recent pay
    e = Extra expenses coming up that will be coming from this account such as Christmas, a holiday, etc
    m = Minimum current account balance
    s = Amount to sweep into another account

    s = b - p - e - m

    If s > 0 then transfer amount s into another account.

## Automated Current Account Sweeping
Some current accounts can automatically sweep current accounts if they have above a set amount in them.  This is great, but we have to be careful that the account that they sweep into is right for us - that it is paying enough interest and is easy enough to withdraw from for our plan.  We also need to be careful that it doesn't sweep too much when we have a big expense coming up as that could lead our account to have less than our minimum and potentially even take us overdrawn.

## How Could This Mount Up?
To see how current account sweeping could make a difference over time, we could estimate the average monthly amount being swept and put it onto the chart below.

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
  google.charts.load('current', {'packages':['corechart']});
  google.charts.setOnLoadCallback(drawChart);

  function drawChart() {
    var data = google.visualization.arrayToDataTable([
      ['Years', '£20/m', '£50/m', '£100/m', '£150/m', '£200/m', '£300/m'],
      [0,  0, 0, 0, 0, 0, 0],
      [1,  20*12, 50*12, 100*12, 150*12, 200*12, 300*12],
      [2,  20*12*2, 50*12*2, 100*12*2, 150*12*2, 200*12*2, 300*12*2],
      [3,  20*12*3, 50*12*3, 100*12*3, 150*12*3, 200*12*3, 300*12*3],
      [4,  20*12*4, 50*12*4, 100*12*4, 150*12*4, 200*12*4, 300*12*4],
      [5,  20*12*5, 50*12*5, 100*12*5, 150*12*5, 200*12*5, 300*12*5],
    ]);

    var options = {
      title: 'Sweeping Every Month',
      curveType: 'function',
      legend: { position: 'bottom' },
      hAxis: {
        title: 'Years',
        viewWindow: {
            min:0
        },
        format: '0'
      }
    };

    var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

    chart.draw(data, options);
  }
</script>
<div id="curve_chart" style="width: 100%; height: 500px"></div>
<br />

If we look at an amount of £150/month swept on average, this chart demonstrates how over 3 years this would lead to £5,400.  Quite a nice amount from just sweeping the excess into a savings account.  This is without even taking into account interest which would make even more of it.
