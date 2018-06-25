<%@ page import="java.util.Calendar" %>

<!-- Footer -->
<footer id="footer">
    <p style="font-weight: bold" class="copyright">&copy;<% int yeat = Calendar.getInstance().get(Calendar.YEAR); out.println(yeat); %>| Takoradi Technical University</p>
</footer>

</div>
</div>

<!-- BG -->
<div id="bg"></div>
<script>
    // Example starter JavaScript for disabling form submissions if there are invalid fields
    (function() {
        'use strict';
        window.addEventListener('load', function() {
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.getElementsByClassName('needs-validation');
            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function(form) {
                form.addEventListener('submit', function(event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        }, false);
    })();
</script>








<script src="../assets/jquery/jquery.min.js"></script>
<script src="../assets/bootstrap/js/bootstrap.min.js"></script>
<!--   Core JS Files   -->
<script src="../assets/materialKit/assets/js/core/jquery.min.js"></script>
<script src="../assets/materialKit/assets/js/core/popper.min.js"></script>

<!-- Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="../assets/materialKit/assets/js/plugins/nouislider.min.js"></script>

<!-- Material Kit Core initialisations of plugins and Bootstrap Material Design Library -->
<script src="../assets/materialKit/assets/js/material-kit.mine8da.js?v=2.0.3"></script>

<script src="../assets/js/browser.min.js"></script>
<script src="../assets/js/breakpoints.min.js"></script>
<script src="../assets/js/util.js"></script>
<script src="../assets/js/main.js"></script>

</body>
</html>