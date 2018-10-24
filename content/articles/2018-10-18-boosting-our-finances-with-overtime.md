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
    <td class="text-right">[lindex [overtime 0.75 week] 0]</td>
    <td class="text-right">[lindex [overtime 0.75 week] 1]</td>
    <td class="text-right">[lindex [overtime 0.75 week] 2]</td>
  </tr>
  <tr>
    <td>&frac14; hour extra 5 days a week</td>
    <td class="text-right">[lindex [overtime 1.25 week] 0]</td>
    <td class="text-right">[lindex [overtime 1.25 week] 1]</td>
    <td class="text-right">[lindex [overtime 1.25 week] 2]</td>
  </tr>
  <tr>
    <td>&frac12; hour extra 3 days a week</td>
    <td class="text-right">[lindex [overtime 1.5 week] 0]</td>
    <td class="text-right">[lindex [overtime 1.5 week] 1]</td>
    <td class="text-right">[lindex [overtime 1.5 week] 2]</td>
  </tr>
  <tr>
    <td>&frac12; hour extra 5 days a week</td>
    <td class="text-right">[lindex [overtime 2.5 week] 0]</td>
    <td class="text-right">[lindex [overtime 2.5 week] 1]</td>
    <td class="text-right">[lindex [overtime 2.5 week] 2]</td>
  </tr>
  <tr>
    <td>1 hour extra 1 day a week</td>
    <td class="text-right">[lindex [overtime 1 week] 0]</td>
    <td class="text-right">[lindex [overtime 1 week] 1]</td>
    <td class="text-right">[lindex [overtime 1 week] 2]</td>
  </tr>
  <tr>
    <td>1 hour extra 2 days a week</td>
    <td class="text-right">[lindex [overtime 2 week] 0]</td>
    <td class="text-right">[lindex [overtime 2 week] 1]</td>
    <td class="text-right">[lindex [overtime 2 week] 2]</td>
  </tr>
  <tr>
    <td>7 hours extra a month</td>
    <td class="text-right">[lindex [overtime 7 month] 0]</td>
    <td class="text-right">[lindex [overtime 7 month] 1]</td>
    <td class="text-right">[lindex [overtime 7 month] 2]</td>
  </tr>
  <tr>
    <td>10 hours extra a month</td>
    <td class="text-right">[lindex [overtime 10 month] 0]</td>
    <td class="text-right">[lindex [overtime 10 month] 1]</td>
    <td class="text-right">[lindex [overtime 10 month] 2]</td>
  </tr>
</table>

We can see above how overtime can re-balance our finaces.  For example, doing &frac12; hours's overtime 5 days a week, would return an extra £[lindex [overtime 2.5 week] 1] after 3 months - pretty handy near Christmas.
