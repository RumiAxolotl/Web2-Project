function generateFooter() {
  var footer = document.getElementById("footer");
  if (footer) {
    footer.innerHTML = `
    <div class="bg-dark text-white pt-4 pb-3">
        <div class="container">
            <!-- Section: Links -->
            <section class="mt-5">
                <!-- Grid row-->
                <div class="row text-center d-flex justify-content-center pt-5">
                    <!-- Grid column -->
                    <div class="col-md-2">
                        <h6 class="text-uppercase font-weight-bold">
                            <a href="#!" class="text-white">About us</a>
                        </h6>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-2">
                        <h6 class="text-uppercase font-weight-bold">
                            <a href="#!" class="text-white">Products</a>
                        </h6>
                    </div>
                    <!-- Grid column -->


                    <!-- Grid column -->
                    <div class="col-md-2">
                        <h6 class="text-uppercase font-weight-bold">
                            <a href="#!" class="text-white">Help</a>
                        </h6>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-2">
                        <h6 class="text-uppercase font-weight-bold">
                            <a href="#!" class="text-white">Contact</a>
                        </h6>
                    </div>
                    <!-- Grid column -->
                </div>
                <!-- Grid row-->
            </section>
            <!-- Section: Links -->

            <hr class="my-5" />

            <!-- Section: Text -->
            <section class="mb-5">
                <div class="row d-flex justify-content-center">
                    <div class="col-lg-8">
                        <p>
                            Welcome to [Company Name], where we are passionate about providing top-quality [product/service] to our customers.
                            Founded in [year], our company has grown from a small startup to a thriving business with a dedicated team of
                            professionals. Our mission is to [insert mission statement], and we strive to achieve this by [insert key values].
                            Whether you are a first-time customer or a long-time client, we are committed to providing excellent customer service
                            and ensuring your satisfaction with our [product/service]. Thank you for choosing [Company Name], and we look forward to
                            serving you!
                        </p>
                    </div>
                </div>
            </section>
            <!-- Section: Text -->


        </div>
        <!-- Grid container -->

        <!-- Copyright -->
        <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2)">
            © 2023 Copyright:
            <a class="text-white" href="#">OurCompany.com</a>
        </div>
    </div>
`;
  }
}
