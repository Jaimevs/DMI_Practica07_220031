# cinemapedia_220031


<img src="imagen2.jpg" alt="Logo Carrera" width="200" align="center"/>

---

# Práctica 07  
## Práctica 07: Implementación de Actores (Movie Actors)

El objetivo principal de esta práctica fue extender la funcionalidad para mostrar los detalles completos de una película, incluyendo su poster, título, calificación, descripción y, lo más importante, la lista de los actores participantes.

### Actividades Realizadas

- Clonación/Ramificación: Se preparó el entorno para la práctica 07.
- Entidad y Modelo de Actores: Se crearon las estructuras de datos necesarias para representar a los actores.
- Datasource: Se realizaron los ajustes para consumir los endpoints de la API relacionados con los actores.
- Mappers: Se implementó la lógica para la correcta deserialización de los campos del modelo Actor.
- Providers (Riverpod v3): Se realizaron los cambios necesarios para gestionar el estado de los actores.
- GoRouter: Se configuraron las rutas para poder desplegar la vista de detalles de la película.
- Elementos Visuales (Detalles): Se implementó la vista que presenta todos los datos de detalle de la película (póster, título, descripción, etc.).
- Elementos Visuales (Actores): Se desarrolló el componente visual para mostrar la lista y la información de los actores.
- Testeo: Se verificó la funcionalidad de la aplicación.

---

# Estructura Completa del Proyecto Cinemapedia con Comentarios
```text
lib/
├── config/
│ ├── constants/
│ │ └── environment.dart
│ ├── helpers/
│ │ └── human_formats.dart
│ ├── router/
│ │ └── app_router.dart
│ └── theme/
│ └── app_theme.dart
│
├── domain/
│ ├── datasources/
│ │ ├── actors_datasource.dart
│ │ └── movies_datasource.dart
│ ├── entities/
│ │ ├── actor.dart
│ │ └── movie.dart
│ └── repositories/
│ ├── actors_repository.dart
│ └── movies_repository.dart
│
├── infrastructure/
│ ├── datasources/
│ │ ├── actor_moviedb_datasource.dart
│ │ └── moviedb_datasource.dart
│ ├── mappers/
│ │ ├── actor_mapper.dart
│ │ └── movie_mapper.dart
│ ├── models/
│ │ └── moviedb/
│ │ ├── credits_response.dart
│ │ ├── movie_details.dart
│ │ ├── movie_moviedb.dart
│ │ └── moviedb_response.dart
│ └── repositories/
│ ├── actor_repository_impl.dart
│ └── movie_repository_impl.dart
│
├── presentation/
│ ├── delegates/
│ │ └── search_movie_delegates.dart
│ ├── providers/
│ │ ├── actors/
│ │ │ ├── actors_by_movie_provider.dart
│ │ │ └── actors_repository_provider.dart
│ │ ├── movies/
│ │ │ ├── initial_loading_provider.dart
│ │ │ ├── movie_info_provider.dart
│ │ │ ├── movies_providers.dart
│ │ │ ├── movies_repository_provider.dart
│ │ │ └── movies_slideshow_provider.dart
│ │ ├── search/
│ │ │ └── search_movies_provider.dart
│ │ └── providers.dart
│ ├── screens/
│ │ ├── movies/
│ │ │ ├── home_screen.dart
│ │ │ └── movie_screen.dart
│ │ └── screens.dart
│ └── widgets/
│ ├── movies/
│ │ ├── movie_horizontal_listview.dart
│ │ └── movies_slideshow.dart
│ ├── shared/
│ │ ├── custom_appbar.dart
│ │ ├── custom_bottom_navigation.dart
│ │ └── full_screen_loader.dart
│ └── widgets.dart
│
└── main.dart

```

