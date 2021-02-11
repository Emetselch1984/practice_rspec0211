WDAY = {
    sunday: "日曜日",
    monday: "月曜日",
    tuesday: "火曜日",
    wedensday: "水曜日",
    thursday: "木曜日",
    friday: "金曜日",
    saturday: "土曜日",
}

ARY = %i(sunday monday tuesday wedensday thursday friday saturday)
def hash_message(ary)
  result = []
  ary.each do |day|
    w =   "#{day}は#{WDAY[day]}です"
    result << w
  end
  result
end
def main(arg)
   hash_message(arg)
end