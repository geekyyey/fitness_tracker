# README
Creating a simple fitness tracker. 
Created waterlog and ran into a problem where Rail's autoloader, Zeitwerk could not properly locate and load the WaterLogsController class. When a request was made to http://localhost:3000/water_logs, 
Rails expected a file named water_logs_controller.rb in the app/controllers/ directory to define the WaterLogsController class. However, one of the following issues prevented this from happening:
The file name contained an extra space or typo (e.g., water_logs_controller .rb instead of water_logs_controller.rb).
The class definition inside the file was missing or incorrectly defined, which did not match Rails conventions.
This mismatch caused the Zeitwerk::NameError:
expected file <path>/water_logs_controller.rb to define constant WaterLogsController, but didn't.
Additionally, when the naming issue was resolved, the index action in the WaterLogsController was empty. This led Rails to return a 204 No Content response instead of rendering a view or returning content, resulting in a blank page.
What solved the problem:
Renamed the file to match Rails naming conventions: app/controllers/water_logs_controller.rb
Updated the file to ensure the class name matched the expected convention:
class WaterLogsController < ApplicationController
  def index
    render plain: "DRINK PLENTY OF WATER!"
  end
end
Initially tested the response by rendering plain text in the index action to confirm the controller was working.
Later, replaced the plain text with proper view rendering:
Made sure a view file (app/views/water_logs/index.html.erb) existed.
Updated the index action to render the view.
After fixing the file name and class definition, the Rails server was restarted to ensure changes were loaded properly.
After fixing the file name, class definition, and ensuring proper rendering in the index action, the controller worked as expected, and the browser displayed the correct content.
