# Digidaw – Digimon Explorer App

Digidaw is a simple iOS application that allows users to explore Digimon through a card-based interface.  
The app is built using **Swift 5** and **SwiftUI**, and uses the public **Digi API** to display Digimon lists, detailed information, and images with pagination and infinite scrolling.

---

## Features

- **Digimon Card Grid**
- Displays Digimon in a responsive grid layout
- **Digimon Detail View**
- Shows detailed information including image, level, type, attribute, and field
- **Pagination & Infinite Scrolling**
- Loads **8 Digimon per page**
- Automatically fetches the next page when scrolling
- **Error Handling**
- Handles no internet connection
- Handles API errors gracefully
- **Clean Architecture**
- Uses MVVM (Model–View–ViewModel)
- **Responsive UI**
- Adapts to different screen sizes without breaking constraints

---

## Architecture

This project follows the **MVVM (Model–View–ViewModel)** architecture pattern:

- **Model**
  - Represents API responses such as `Digimon`, `DigimonDetailResponse`, and related entities
- **View**
  - SwiftUI views:
    - `DigimonListView`
    - `DigimonCardView`
    - `DigimonDetailView`
- **ViewModel**
  - Handles business logic, pagination, and API communication:
    - `DigimonListViewModel`
    - `DigimonDetailViewModel`

All network requests are centralized in `APIService`.

---

## API
Digidaw uses the free public **Digi API**


### Pagination Behavior
- Each API request loads **8 Digimon per page**
- Scrolling triggers the next page load
- Previously loaded items remain visible to preserve browsing context
- Pagination stops automatically when the API returns an empty response

> Pagination refers to **data loading per request**, not the number of items visible on screen.  
> The grid layout is responsive and adapts to different device screen sizes.

---

## Image Handling

- The **list endpoint** provides a single image URL (`image`)
- The **detail endpoint** provides multiple images (`images`)
- Image URLs are normalized to HTTPS to comply with iOS App Transport Security (ATS)
- Images are loaded using SwiftUI’s native `AsyncImage`

---

## Error Handling

- Displays alerts for:
- No internet connection
- API request failures
- Prevents duplicate or infinite API calls
- Gracefully stops loading when no more data is available

---

## Infinite Scroll Logic

- The next page is fetched when the last visible item appears
- Uses internal loading state to avoid duplicate requests
- Ensures smooth scrolling and predictable behavior

---

## Dependencies

This project does **not** use any third-party dependencies.  
All features are implemented using native iOS frameworks such as `SwiftUI`, `URLSession`, and `AsyncImage`.

---

## 🚀 How to Run

1. Clone the repository
2. Open the project in Xcode
3. Select an iOS Simulator
4. Run the app (`Cmd + R`)

---

## 👤 Author

**Mirabella**  
iOS Developer


