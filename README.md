# Sales Dashboard - Flutter Mobile App

Dashboard commercial mobile développé avec Flutter pour le test technique.

## Fonctionnalités

- **KPI Cards**: Affichage des métriques clés (Sales, Customers, Products, Revenue)
- **Graphiques interactifs**:
  - Line chart pour les performances globales avec filtres temporels
  - Bar chart pour les ventes mensuelles
- **Tableau de commandes**: Liste des commandes avec statut de paiement
- **Navigation**: BottomNavigationBar et Drawer fonctionnels
- **Responsive**: Adaptation automatique aux différentes tailles d'écran
- **Gestion d'état**: Provider pour la gestion centralisée de l'état

## Structure du projet

```
lib/
├── main.dart                    # Point d'entrée de l'application
├── models/
│   └── order_model.dart        # Modèle de données pour les commandes
├── pages/
│   └── dashboard_screen.dart   # Page principale du dashboard
├── providers/
│   └── dashboard_provider.dart # Provider pour la gestion d'état
├── widgets/
│   ├── kpi_card.dart          # Widget pour les cartes KPI
│   ├── line_chart.dart        # Widget graphique linéaire
│   ├── bar_chart.dart         # Widget graphique à barres
│   └── orders_table.dart      # Widget tableau de commandes
└── utils/                      # Utilitaires (à implémenter)

test/
├── unit/
│   └── dashboard_provider_test.dart  # Tests unitaires du provider
└── widget/
    ├── kpi_card_test.dart           # Tests du widget KPI Card
    └── orders_table_test.dart       # Tests du widget Orders Table
```

## Installation et exécution

### Prérequis
- Flutter SDK >= 3.0.0
- Dart SDK >= 3.0.0

### Installation des dépendances
```bash
flutter pub get
```

### Lancer l'application
```bash
flutter run
```

### Exécuter les tests
```bash
flutter test
```

### Build production
```bash
flutter build apk --release
```

## Dépendances principales

- **provider**: ^6.1.2 - Gestion d'état
- **fl_chart**: ^0.66.2 - Graphiques interactifs
- **intl**: ^0.19.0 - Internationalisation et formatage

## Tests

Le projet inclut:
- Tests unitaires pour le DashboardProvider
- Tests de widgets pour KpiCard et OrdersTable
- Test d'intégration du DashboardScreen

Tous les tests passent avec succès.

## Développeur

Projet développé pour le test technique Flutter Mobile.
