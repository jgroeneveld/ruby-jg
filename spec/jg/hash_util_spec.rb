require 'jg/hash_util'

module JG
  describe HashUtil do

    it 'turns strings into symbols' do
      hash = {"hans" => 2, peter: 3}

      new_hash = HashUtil.symbolize_keys(hash)

      expect(new_hash).to eq({ hans: 2, peter: 3 })
    end

  end
end

