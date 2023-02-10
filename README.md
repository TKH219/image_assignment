
# Images assignment

This project is an assignment at the interview progress of Otto International company.

## License
This project have used API from [Pexels](https://www.pexels.com/api/documentation/#photos-overview).

## Architecture

Apply Clean Architecture + GetX pattern + Flutter 3.7.0

## Feature

1. Use of any public Photo API to get a list of photos and build a gallery of photos.
2. The user can tap the photo and can see a full-screen view of the photo.
3. The user has an infinite scroll on the gallery screen.
4. Zoom in/out when double tap on image preview.
5. Handle orientation for preview image.
6. Cache Image for list photo and preview screen.

## Q&A
1. What would be your Ideal CI/CD Pipeline for this Application?

    For CI/CD I suggest to use [fastlane](https://fastlane.tools/) tools to implement it. We can easily to build release for multiple platform and environment. And also can implement with Gilab pipeline or something else.


2. What other features would you introduce to this app?

   In addition to the required features, I have handled for orientation screen when showing image preview. I think it is important when working with image preview.

3. How would you introduce several user types?

    For mobile, I can define an enum for user types. And based on it, I can easily handle for some special cases or features for support multiple user types in application. And everything will be setup after you log in. If some user types is so special to support, like Grab have a new UI for driver, I will build a new component to apply only for this role. It will be built on your business. 

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