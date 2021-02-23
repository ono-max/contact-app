class Questionnaire < ApplicationRecord
  TWO_CHOICES = { "yes": 0, "no": 1}
  PLACES = { "paypay_mall": 0, "help_page_in_zozotown": 1, "order_history_in_zozotown": 2, "delivery_slip": 3, "link_on_mail_from_zozotown": 4, "other": 5}
  SATISFACTION_LEVELS = {"very_satisfied": 0, "satisfied": 1, "neither": 2, "unsatisfied": 3, "very_unsatisfied": 4}
  OPINIONS = { "strongly_agree": 0, "agree": 1, "neutral": 2, "disagree": 3, "strongly_diagree": 4 }
  NUMBERS = {"0": 0, "1": 1, "2": 2, "3": 3, "4": 4, "5": 5, "6": 6, "7": 7, "8": 8, "9": 9, "10": 10}
  enum q1: TWO_CHOICES
  enum q2: PLACES
  enum q3: SATISFACTION_LEVELS
  enum q4: OPINIONS
  enum q5: OPINIONS
  enum q6: OPINIONS
  enum q7: OPINIONS
  enum q8: NUMBERS
  validates :q1, inclusion: { in: TWO_CHOICES.keys.concat(TWO_CHOICES.keys.map(&:to_s)) }
  validates :q2, inclusion: { in: PLACES.keys.concat(PLACES.keys.map(&:to_s)) }
  validates :q3, inclusion: { in: SATISFACTION_LEVELS.keys.concat(SATISFACTION_LEVELS.keys.map(&:to_s))}
  validates :q4, inclusion: { in: OPINIONS.keys.concat(OPINIONS.keys.map(&:to_s))}
  validates :q5, inclusion: { in: OPINIONS.keys.concat(OPINIONS.keys.map(&:to_s))}
  validates :q6, inclusion: { in: OPINIONS.keys.concat(OPINIONS.keys.map(&:to_s))}
  validates :q7, inclusion: { in: OPINIONS.keys.concat(OPINIONS.keys.map(&:to_s))}
  validates :q8, inclusion: 0..10
end
