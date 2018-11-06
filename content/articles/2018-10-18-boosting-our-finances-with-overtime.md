!* commandSubst true
!  proc overtime {hrs freq} {
!    set payPerHour 8
!    set yearOvertime 0
!    set tax 0
!    if {$freq == "week"} {
!      set yearOvertime [expr {$payPerHour * $hrs * 48}]
!    } elseif {$freq == "month"} {
!      set yearOvertime [expr {$payPerHour * $hrs * 12}]
!    } else {
!      log error "unrecognized freq: $freq"
!    }
!    return [list [expr {int($yearOvertime / 12)}] [expr {int($yearOvertime / 4)}] [expr {int($yearOvertime)}]]
!  }
If we work in a job where we can do a little overtime from time to time, it can really give a boost to our finances.  Even small amounts of overtime can add-up over a month or so.  This is particularly useful in the run-up to a big expense, such as a holiday or Christmas.  Sometimes we just need to get our saving plans back on track or replenish our emergency fund.  A little overtime is perfect for this.

## How Does Overtime Add-Up?

If we look at the effect of various amounts of overtime, before tax and NI, over different time-periods we can start to see the effect it can have on our personal finances.  For the table below we'll assume we are paid £8/hr.

<table class="table table-bordered hand-written">
  <tr>
    <th>Details of overtime</th>
    <th class="text-right">Month</th>
    <th class="text-right">3 Months</th>
    <th class="text-right">Year</th>
  </tr>
  <tr>
    <td>&frac14; hour extra 3 days a week</td>
    <td class="text-right">£[lindex [overtime 0.75 week] 0]</td>
    <td class="text-right">£[lindex [overtime 0.75 week] 1]</td>
    <td class="text-right">£[lindex [overtime 0.75 week] 2]</td>
  </tr>
  <tr>
    <td>&frac14; hour extra 5 days a week</td>
    <td class="text-right">£[lindex [overtime 1.25 week] 0]</td>
    <td class="text-right">£[lindex [overtime 1.25 week] 1]</td>
    <td class="text-right">£[lindex [overtime 1.25 week] 2]</td>
  </tr>
  <tr>
    <td>&frac12; hour extra 3 days a week</td>
    <td class="text-right">£[lindex [overtime 1.5 week] 0]</td>
    <td class="text-right">£[lindex [overtime 1.5 week] 1]</td>
    <td class="text-right">£[lindex [overtime 1.5 week] 2]</td>
  </tr>
  <tr>
    <td>&frac12; hour extra 5 days a week</td>
    <td class="text-right">£[lindex [overtime 2.5 week] 0]</td>
    <td class="text-right">£[lindex [overtime 2.5 week] 1]</td>
    <td class="text-right">£[lindex [overtime 2.5 week] 2]</td>
  </tr>
  <tr>
    <td>1 hour extra 1 day a week</td>
    <td class="text-right">£[lindex [overtime 1 week] 0]</td>
    <td class="text-right">£[lindex [overtime 1 week] 1]</td>
    <td class="text-right">£[lindex [overtime 1 week] 2]</td>
  </tr>
  <tr>
    <td>1 hour extra 2 days a week</td>
    <td class="text-right">£[lindex [overtime 2 week] 0]</td>
    <td class="text-right">£[lindex [overtime 2 week] 1]</td>
    <td class="text-right">£[lindex [overtime 2 week] 2]</td>
  </tr>
  <tr>
    <td>7 hours extra a month</td>
    <td class="text-right">£[lindex [overtime 7 month] 0]</td>
    <td class="text-right">£[lindex [overtime 7 month] 1]</td>
    <td class="text-right">£[lindex [overtime 7 month] 2]</td>
  </tr>
  <tr>
    <td>10 hours extra a month</td>
    <td class="text-right">£[lindex [overtime 10 month] 0]</td>
    <td class="text-right">£[lindex [overtime 10 month] 1]</td>
    <td class="text-right">£[lindex [overtime 10 month] 2]</td>
  </tr>
  <tr>
    <td>14 hours extra a month</td>
    <td class="text-right">£[lindex [overtime 14 month] 0]</td>
    <td class="text-right">£[lindex [overtime 14 month] 1]</td>
    <td class="text-right">£[lindex [overtime 14 month] 2]</td>
  </tr>
</table>

!* commandSubst false variableSubst true
!  set 1hr12m [expr {[lindex [overtime 1 month] 2]}]
!  set 2hr12m [expr {[lindex [overtime 2 month] 2]}]
!  set 4hr12m [expr {[lindex [overtime 4 month] 2]}]
!  set 7hr12m [expr {[lindex [overtime 7 month] 2]}]
!  set 10hr12m [expr {[lindex [overtime 10 month] 2]}]
!  set 14hr12m [expr {[lindex [overtime 14 month] 2]}]
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
  google.charts.load('current', {'packages':['corechart']});
  google.charts.setOnLoadCallback(drawChart);

  function drawChart() {
    var data = google.visualization.arrayToDataTable([
      ['Months', '1 hr/mth', '2 hr/mth', '4 hr/mth', '7 hr/mth', '10 hr/mth', '14 hr/mth'],
      [0, 0, 0, 0, 0, 0, 0],
      [12,  $1hr12m, $2hr12m, $4hr12m, $7hr12m, $10hr12m, $14hr12m]
    ]);

    var options = {
      title: 'Overtime',
      curveType: 'function',
      legend: { position: 'bottom' },
      hAxis: {
        title: 'Months',
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
!* commandSubst true


We can see above how overtime can re-balance our finances.  For example, doing 10 hours overtime a month, equivalent to &frac12; hour's overtime 5 days a week, would return an extra £[lindex [overtime 2.5 week] 1] after 3 months - pretty handy near Christmas or alternatively used for a treat as a reward for sticking to a budget.
