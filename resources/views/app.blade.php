<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>TDIX</title>

    <link href="{{ Voyager::image($data->logo) }}" rel="icon">
    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-v4-grid-only@1.0.0/dist/bootstrap-grid.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css" integrity="sha512-1cK78a1o+ht2JcaW6g8OXYwqpev9+6GqOkz9xmBN9iUUhIndKtxwILGWYOSibOKjLsEdjyjZvYDq/cZwNeak0w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- font awesome cdn link  -->

    <link rel="stylesheet" href="{{ asset('css/style.css')}}">
    <link rel="stylesheet" href="{{ asset('css/footer.css')}}">
    <link rel="stylesheet" href="{{ asset('css/'.LaravelLocalization::getCurrentLocale().'-style.css')}}">

</head>
<body>
    <div id="preloader"></div>
    <button id="chat_with_us"><i class="fas fa-comment-alt"></i></button>

    @include('layouts.header')

    @yield('main')

    @include('layouts.footer')
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js" integrity="sha512-A7AYk1fGKX6S2SsHywmPkrnzTZHrgiVT7GcQkLGDe2ev0aWb8zejytzS8wjo7PGEXKqJOrjQ4oORtnimIRZBtw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js"></script>
<script src="{{ asset('js/main-'.LaravelLocalization::getCurrentLocale().'.js')}}"></script>

{{-- Success message --}}
@if(session()->has('message'))
<script src="{{ asset('js/success-message-'.LaravelLocalization::getCurrentLocale().'.js')}}"></script>
@endif

{{--Error message --}}

@if ($errors->any())
        <script src="{{ asset('js/error-message-'.LaravelLocalization::getCurrentLocale().'.js')}}"></script>
@endif
</body>
</html>

