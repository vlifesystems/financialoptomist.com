!* commandSubst true
! source -directory [dir plugins] include.tcl
<!DOCTYPE html>
<html>
  [include head.html]
  <body>
    [include header.html]
    <div class="container">
      [getparam content]
    </div>

    <div class="container">
      [include footer.html]
    </div>
  </body>
</html>
