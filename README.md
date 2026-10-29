# SwiftUI Coordinator

A small sample iOS application that demonstrates how to move navigation logic out of SwiftUI views by using the Coordinator pattern.

The project is built around `NavigationStack` and a single `ObservableObject` coordinator. It manages push navigation, sheets, and full-screen covers, while views only declare which route should be opened. The sample also shows how the same coordinator can control navigation from a UIKit view controller embedded in SwiftUI.

## Features

- Type-safe routes represented by dedicated `Page`, `Sheet`, and `FullScreenCover` enums
- Push, pop, and pop-to-root navigation
- Sheet and full-screen cover presentation and dismissal
- Centralized screen creation with `@ViewBuilder`
- Coordinator access through SwiftUI's environment
- SwiftUI and UIKit navigation working through the same coordinator
- No third-party dependencies

## Requirements

- iOS 16.2+
- Xcode 14.2+
- Swift 5

## Project structure

```text
SwiftUICoordinator/
├── Coordinator/
│   ├── Model/
│   │   ├── Coordinator.swift
│   │   ├── Page.swift
│   │   ├── Sheet.swift
│   │   └── FullScreenCover.swift
│   └── View/
│       └── CoordinatorView.swift
├── Views/
│   ├── SwiftUIView/
│   └── UiKitView/
└── SwiftUICoordinatorApp.swift
```

## How it works

`CoordinatorView` owns the coordinator and binds its navigation state to a `NavigationStack`. The `Coordinator` stores the current path and modal routes, exposes navigation commands, and builds the destination views.

```swift
@EnvironmentObject private var coordinator: Coordinator

Button("Open Banana") {
    coordinator.push(.banana)
}
```

To add a new push destination:

1. Add a case to `Page`.
2. Create the destination view.
3. Handle the new case in `Coordinator.build(_ page:)`.
4. Navigate to it with `coordinator.push(.yourPage)`.

The same approach applies to sheets and full-screen covers through the `Sheet` and `FullScreenCover` enums.

## Getting started

1. Clone the repository.
2. Open `SwiftUICoordinator.xcodeproj` in Xcode.
3. Select an iOS simulator or a connected device.
4. Build and run the `SwiftUICoordinator` scheme.

---

# SwiftUI Coordinator — Русская версия

Небольшое демонстрационное iOS-приложение, показывающее, как вынести логику навигации из SwiftUI-представлений с помощью паттерна Coordinator.

Проект построен на `NavigationStack` и едином координаторе, реализующем `ObservableObject`. Координатор управляет переходами по стеку, модальными окнами и полноэкранными представлениями, а экраны только указывают, какой маршрут нужно открыть. Также в примере показано, как использовать тот же координатор для навигации из UIKit-контроллера, встроенного в SwiftUI.

## Возможности

- Типобезопасные маршруты в отдельных перечислениях `Page`, `Sheet` и `FullScreenCover`
- Переход вперёд, возврат назад и возврат к корневому экрану
- Открытие и закрытие `sheet` и `fullScreenCover`
- Централизованное создание экранов с помощью `@ViewBuilder`
- Доступ к координатору через окружение SwiftUI
- Общая навигация для экранов SwiftUI и UIKit
- Отсутствие сторонних зависимостей

## Требования

- iOS 16.2+
- Xcode 14.2+
- Swift 5

## Структура проекта

```text
SwiftUICoordinator/
├── Coordinator/
│   ├── Model/
│   │   ├── Coordinator.swift
│   │   ├── Page.swift
│   │   ├── Sheet.swift
│   │   └── FullScreenCover.swift
│   └── View/
│       └── CoordinatorView.swift
├── Views/
│   ├── SwiftUIView/
│   └── UiKitView/
└── SwiftUICoordinatorApp.swift
```

## Как это работает

`CoordinatorView` создаёт координатор и связывает его состояние навигации с `NavigationStack`. `Coordinator` хранит текущий путь и модальные маршруты, предоставляет методы навигации и создаёт экраны назначения.

```swift
@EnvironmentObject private var coordinator: Coordinator

Button("Открыть Banana") {
    coordinator.push(.banana)
}
```

Чтобы добавить новый экран в стек навигации:

1. Добавьте новый случай в `Page`.
2. Создайте представление экрана.
3. Обработайте новый случай в `Coordinator.build(_ page:)`.
4. Выполните переход с помощью `coordinator.push(.yourPage)`.

Для модальных и полноэкранных представлений используется такой же подход с перечислениями `Sheet` и `FullScreenCover`.

## Запуск проекта

1. Клонируйте репозиторий.
2. Откройте `SwiftUICoordinator.xcodeproj` в Xcode.
3. Выберите iOS-симулятор или подключённое устройство.
4. Соберите и запустите схему `SwiftUICoordinator`.
