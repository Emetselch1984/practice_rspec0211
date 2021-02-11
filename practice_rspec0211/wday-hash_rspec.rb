require_relative 'wday-hash'

describe  do
  let(:wday){
    {
        sunday: "日曜日",
        monday: "月曜日",
        tuesday: "火曜日",
        wedensday: "水曜日",
        thursday: "木曜日",
        friday: "金曜日",
        saturday: "土曜日",
    }
  }
  it "ハッシュの値の確認" do
    expect(wday[:sunday]).to eq "日曜日"
  end
  it "ハッシュの値のではない" do
    expect(wday[:sunday]).not_to eq "曜日"
  end
  it "ハッシュのサイズは7" do
    expect(wday.size).to eq 7
  end

  it "曜日の配列に応じてメッセージを出す" do
    ary = %w(sunday monday tuesday wedensday thursday friday saturday)
    result = {}
    result = ary.each do |day|
      puts "#{day}は#{wday[day]}です"
    end

    expect(result).to include("sundayは日曜日です")
  end
end