
# Church Returns Database Schema

## 1. Regions

- id (PK)
- name
- created_at

---

## 2. Churches

- id (PK)
- region_id (FK → regions.id)
- church_name
- pastor_name
- phone
- email
- location
- created_at

---

## 3. Users (RBAC System)

- id (PK)
- username
- password_hash
- role (ADMIN, REGIONAL_OVERSEER, DATA_ENTRY_CLERK)
- region_id (FK → regions.id, nullable)
- created_at

---

## 4. Monthly Returns

- id (PK)
- church_id (FK → churches.id)
- month (1-12)
- year
- tithes_amount
- member_contribution
- number_of_members
- submitted_at

Constraint:
- UNIQUE(church_id, month, year)

---

## 5. Contribution Types

- id (PK)
- name
- active
- created_at

Used for flexible yearly contributions.

---

## 6. Church Yearly Contributions

- id (PK)
- church_id (FK → churches.id)
- contribution_type_id (FK → contribution_types.id)
- year
- amount
- submitted_at

Constraint:
- UNIQUE(church_id, contribution_type_id, year)

---

## SYSTEM RULES

- A church belongs to only one region
- Monthly returns cannot be duplicated per church/month/year
- Yearly contributions are extensible via contribution_types
- Regional Overseers are restricted to region-scoped access
