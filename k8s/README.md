# Notes

- Using cert-manager for TLS certificates is not enough for nopCommerce as sometimes in the Checkout page it tries to access `HTTP` links and a mixed-content error is thrown sending the user back to the shopping cart
  - Solution: add meta tag `<meta http-equiv = "Content-Security-Policy" content = "upgrade-insecure-requests">` in the file `Views/Shared/_Root.Head.cshtml` inside the `<head>` tag