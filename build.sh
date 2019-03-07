#!/bin/bash

echo "Writing bolierplate into HTML..."
echo "<!DOCTYPE html>
<html>
    <head>
        <meta charset='UTF-8' />
        <link href='marx.min.css' rel='stylesheet' />
        <title>Aion and ETH UofT Hackathon Cheatsheet</title>
        <style>
            body {
                max-width: 900px;
                margin: 0 auto;
            }
            code a {
                text-decoration: none !important;
            }
        </style>
    </head>
    <body>" > index.html
echo "Finished writing boilerplate."

echo "Writing Markdown into index.html..."
pandoc -i cheatsheet.md -t html >> index.html
echo "Writing finished."

echo "Closing of HTML file."
echo "</body>
</html>" >> index.html
echo "File closed."