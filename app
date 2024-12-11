<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Redirecting...</title>
    <script>
        function redirectToStore() {
            const userAgent = navigator.userAgent || navigator.vendor || window.opera;

            if (/android/i.test(userAgent)) {
                // Redirect to Google Play Store for Android
                window.location.href = "https://play.google.com/store/apps/details?id=com.limziyang.spectrumscout";
            } else if (/iPad|iPhone|iPod/.test(userAgent) && !window.MSStream) {
                // Redirect to App Store for iOS
                window.location.href = "https://apps.apple.com/app/umscout/id6698896813";
            } else {
                // Default message for unsupported platforms
                document.body.innerHTML = "<h1>Platform not supported</h1><p>Please visit the app store on your device to download the app.</p>";
            }
        }

        // Trigger the redirection when the page loads
        window.onload = redirectToStore;
    </script>
</head>
<body>
    <h1>Redirecting...</h1>
    <p>If you are not redirected automatically, please click on the appropriate link:</p>
    <ul>
        <li><a href="https://play.google.com/store/apps/details?id=com.limziyang.spectrumscout">Google Play Store</a></li>
        <li><a href="https://apps.apple.com/app/umscout/id6698896813">Apple App Store</a></li>
    </ul>
</body>
</html>
