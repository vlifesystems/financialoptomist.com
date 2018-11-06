Small hourly wage increase of 25 or 50 pence don't sound like much, but if we can negotiate or apply for a job with even a small hourly wage increase it can make quite a difference over the year.  By seeing these figures totaled up over time we can see why it is worth pursuing opportunities for better hourly pay, no matter how small.

## How do Wage Increases Add-Up?

The table below shows how small hourly wage increases add-up to sizeable additions to our income.  The figures assume a 35 hour week and are not taking into account the effects of interest or inflation.

!* commandSubst true
!  proc increase {increasePerHour numMonths} {
!    set hoursPerWeek 35
!    return [format "%0.2f" [expr {$increasePerHour * 35 * 52 / 12 * $numMonths}]]
!  }
!

<table class="table table-bordered hand-written">
  <tr>
    <th>Increase per hour</th>
    <th class="text-right">1 month</th>
    <th class="text-right">3 months</th>
    <th class="text-right">6 months</th>
    <th class="text-right">1 year</th>
    <th class="text-right">3 years</th>
    <th class="text-right">5 years</th>
  </tr>
  <tr>
    <td class="text-right">£0.25</td>
    <td class="text-right">£[increase 0.25 1]</td>
    <td class="text-right">£[increase 0.25 3]</td>
    <td class="text-right">£[increase 0.25 6]</td>
    <td class="text-right">£[increase 0.25 12]</td>
    <td class="text-right">£[increase 0.25 36]</td>
    <td class="text-right">£[increase 0.25 60]</td>
  </tr>
  <tr>
    <td class="text-right">£0.50</td>
    <td class="text-right">£[increase 0.50 1]</td>
    <td class="text-right">£[increase 0.50 3]</td>
    <td class="text-right">£[increase 0.50 6]</td>
    <td class="text-right">£[increase 0.50 12]</td>
    <td class="text-right">£[increase 0.50 36]</td>
    <td class="text-right">£[increase 0.50 60]</td>
  </tr>
  <tr>
    <td class="text-right">£0.75</td>
    <td class="text-right">£[increase 0.75 1]</td>
    <td class="text-right">£[increase 0.75 3]</td>
    <td class="text-right">£[increase 0.75 6]</td>
    <td class="text-right">£[increase 0.75 12]</td>
    <td class="text-right">£[increase 0.75 36]</td>
    <td class="text-right">£[increase 0.75 60]</td>
  </tr>
  <tr>
    <td class="text-right">£1.00</td>
    <td class="text-right">£[increase 1.00 1]</td>
    <td class="text-right">£[increase 1.00 3]</td>
    <td class="text-right">£[increase 1.00 6]</td>
    <td class="text-right">£[increase 1.00 12]</td>
    <td class="text-right">£[increase 1.00 36]</td>
    <td class="text-right">£[increase 1.00 60]</td>
  </tr>
  <tr>
    <td class="text-right">£1.50</td>
    <td class="text-right">£[increase 1.50 1]</td>
    <td class="text-right">£[increase 1.50 3]</td>
    <td class="text-right">£[increase 1.50 6]</td>
    <td class="text-right">£[increase 1.50 12]</td>
    <td class="text-right">£[increase 1.50 36]</td>
    <td class="text-right">£[increase 1.50 60]</td>
  </tr>
  <tr>
    <td class="text-right">£2.00</td>
    <td class="text-right">£[increase 2.00 1]</td>
    <td class="text-right">£[increase 2.00 3]</td>
    <td class="text-right">£[increase 2.00 6]</td>
    <td class="text-right">£[increase 2.00 12]</td>
    <td class="text-right">£[increase 2.00 36]</td>
    <td class="text-right">£[increase 2.00 60]</td>
  </tr>
</table>

!* commandSubst false variableSubst true
!  set 025_5y [increase 0.25 60]
!  set 050_5y [increase 0.52 60]
!  set 075_5y [increase 0.75 60]
!  set 100_5y [increase 1.00 60]
!  set 150_5y [increase 1.50 60]
!  set 200_5y [increase 2.00 60]
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
  google.charts.load('current', {'packages':['corechart']});
  google.charts.setOnLoadCallback(drawChart);

  function drawChart() {
    var data = google.visualization.arrayToDataTable([
      ['Years', '0.25', '0.50', '0.75', '1.00', '1.50', '2.00'],
      [0, 0, 0, 0, 0, 0, 0],
      [5,  $025_5y, $050_5y, $075_5y, $100_5y, $150_5y, $200_5y]
    ]);

    var options = {
      title: 'Wage increases totaled over years',
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

This extra money could make a real difference to our finances.  Allowing us to spend more on enjoying ourselves, giving to charity, or [saving](/articles/tag/saving/) for the future.  If we were saving for a house deposit, for example, then an extra 75p an hour over 3 years would be an extra £4,095 towards our goal - making it significantly quicker and easier to reach.
