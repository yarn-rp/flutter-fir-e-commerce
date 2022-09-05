class ImageException implements Exception {
  final String message;

  ImageException(this.message);
}

class ImageUploadException extends ImageException {
  ImageUploadException(String message) : super(message);
}

class CouldNotTakeValidUrlException extends ImageException {
  CouldNotTakeValidUrlException(String message) : super(message);
}
