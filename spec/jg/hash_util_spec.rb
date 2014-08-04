require 'jg/hash_util'

module JG
  describe HashUtil do

    it 'turns strings into symbols' do
      hash = {1 => "foo", foo: 2, "3" => "bar", nil => "bar"}

      new_hash = HashUtil.symbolize_keys(hash)

      expect(new_hash).to eq({1=>"foo", :foo=>2, :"3"=>"bar", nil=>"bar"})
    end

  end
end

