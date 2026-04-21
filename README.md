# UI Wireframes Embedded in Activity Diagram

The UI form wireframes are now embedded in an Activity Diagram. There is a separate PlantUML (puml) file for the areas Search (ending at view vehicle details), Reports, and Transactions (containing things like Add Vehicle, Parts Order, etc). To build the SVG diagrams, run ```plantuml -tsvg *.puml``` in the directory. Tested with PlantUML 1.2026.1 on WSL. 

There is an index.html that lets you navigate between the diagrams in a web browser.