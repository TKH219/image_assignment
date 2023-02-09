
# Images assignment

This project is an assignment at the interview progress of Otto International company.

## License
This project have used API from [Pexels](https://www.pexels.com/api/documentation/#photos-overview).

## Architecture

Apply Clean Architecture + GetX pattern + Flutter 3.7.0

## Code Structure
Here is list all of key folders or files in code structure:
```
lib
   |-- app.dart
   |-- components
   |   |-- custom_header_smart_refresher.dart
   |   |-- loading_circle.dart
   |-- constants
   |   |-- color_constants.dart
   |   |-- constants.dart
   |-- core
   |   |-- failure.dart
   |-- data
   |   |-- entities
   |   |   |-- common
   |   |   |   |-- image_source.dart
   |   |   |-- entity.dart
   |   |   |-- photo
   |   |   |   |-- photo_entity.dart
   |   |-- remote
   |   |   |-- impl
   |   |   |   |-- photo_client_impl.dart
   |   |   |-- photo_client.dart
   |   |-- repositories
   |   |   |-- photo_repository_impl.dart
   |   |-- response
   |   |   |-- get_list_photos_response.dart
   |   |   |-- response.dart
   |-- domain
   |   |-- model
   |   |   |-- models.dart
   |   |   |-- photo
   |   |   |   |-- photo_model.dart
   |   |-- repositories
   |   |   |-- photo_repository.dart
   |   |-- use_cases
   |   |   |-- impl
   |   |   |   |-- photo_use_case_impl.dart
   |   |   |-- photo_use_case.dart
   |-- extensions
   |   |-- string_extension.dart
   |-- features
   |   |-- get_list_photos
   |   |   |-- controller
   |   |   |   |-- get_list_photos_controller.dart
   |   |   |-- page
   |   |   |   |-- get_list_photos_screen.dart
   |   |   |-- widgets
   |   |   |   |-- photo_item_widget.dart
   |   |-- preview_image
   |   |   |-- page
   |   |   |   |-- custom_photo_view_gallery.dart
   |   |   |-- widgets
   |   |   |   |-- custom_photo_preview_item_widget.dart
   |-- injection.dart
   |-- main.dart
   |-- utils
   |   |-- utils.dart
```