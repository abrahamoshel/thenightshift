Visit.seed(:id,
  { id: 1, user_id: 1, venue_id: 2, visits: 10, last_check_in: (DateTime.now - 10) },
  { id: 2, user_id: 2, venue_id: 1, visits: 2, last_check_in: (DateTime.now - 30) },
  { id: 3, user_id: 2, venue_id: 3, visits: 10, last_check_in: (DateTime.now) },
  { id: 4, user_id: 3, venue_id: 1, visits: 20, last_check_in: (DateTime.now - 1) },
  { id: 5, user_id: 3, venue_id: 2, visits: 5, last_check_in: (DateTime.now) },
  { id: 6, user_id: 3, venue_id: 3, visits: 15, last_check_in: (DateTime.now - 5) }
)
