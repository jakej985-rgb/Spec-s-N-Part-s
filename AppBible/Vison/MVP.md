# Minimum Viable Product (MVP)

---

## Scope
Everything below is required for v1.0 release. Features not listed are post-launch.

---

## Core Features (v1.0)

### Vehicle Management
- [x] Add vehicle (VIN scan or manual YMMT)
- [x] VIN decode and factory spec lookup
- [x] Manual vehicle entry (YMMT picker)
- [x] View vehicle list (Garage screen)
- [x] View vehicle details (engine, transmission, specs)
- [x] Edit vehicle name and metadata
- [x] Delete vehicle (with confirmation)
- [x] Switch/select current vehicle

### Maintenance Tracking
- [x] Add maintenance record (date, type, mileage, cost, notes)
- [x] Attach photos/receipts to maintenance
- [x] View maintenance history (timeline, filterable)
- [x] Edit/delete maintenance records
- [x] Maintenance analytics (total cost, by type)

### Fluids & Specifications
- [x] Display factory fluid specs (oil, coolant, transmission, brake)
- [x] Link fluid specs to Part recommendations
- [x] Show recommended change intervals

### Home Screen
- [x] Quick overview of selected vehicle
- [x] Upcoming maintenance reminders widget
- [x] Quick actions (add maintenance, log fill-up)

### Settings
- [x] Theme (light/dark)
- [x] Units (metric/imperial)
- [x] About & Help

### Data & Sync
- [x] Local SQLite database
- [x] Basic cloud sync (unauthenticated, local-first)
- [x] Offline functionality (all features work without network)

---

## Out of Scope (Post-v1.0)

### Advanced Features
- [ ] Parts catalog & shopping
- [ ] Modifications tracking
- [ ] Advanced reminders (recurring, SMS/push)
- [ ] Expense analytics dashboard
- [ ] PDF export
- [ ] Photo gallery per vehicle
- [ ] Social sharing
- [ ] Multi-user/family accounts
- [ ] Calendar-based maintenance planning
- [ ] OBD integration (live data)
- [ ] Trip logging & fuel economy

### Platform/Technical
- [ ] Web app (desktop version)
- [ ] iPad/tablet optimization
- [ ] Apple Watch app
- [ ] Custom themes/colors
- [ ] Accessibility enhancements (beyond WCAG AA)
- [ ] Offline map for service locations

---

## Success Criteria for MVP

1. **Core Functionality**: All checked items above work without crashes.
2. **Offline**: App functions fully without network.
3. **Performance**: App launches in < 2 seconds, no UI freezes.
4. **Data Integrity**: No data loss on app close, clear, or reinstall.
5. **Usability**: New users can add a vehicle and log maintenance in < 2 minutes.

---

## Timeline
- Alpha: internal testing, core feature validation
- Beta: external user feedback, bug fixes
- v1.0: production release to app stores

---

## Post-v1.0 Roadmap (Prioritized)
1. Push notifications & reminders (high value, low risk)
2. Parts catalog (address user request for parts links)
3. Advanced analytics (expense tracking, trends)
4. Modifications tracking (enthusiast user base)
5. Multi-device sync with cloud account (premium feature?)

---

