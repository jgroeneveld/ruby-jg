require 'jg/hash_util'

module JG
  describe HashUtil do

    describe '.symbolize_keys' do
      it 'turns strings into symbols' do
        hash = {1 => "foo", foo: 2, "3" => "bar", nil => "bar"}

        new_hash = HashUtil.symbolize_keys(hash)

        expect(new_hash).to eq({1=>"foo", :foo=>2, :"3"=>"bar", nil=>"bar"})
      end
    end

    describe '.deep_compact' do
      it 'removes nil values' do
        hash = {
          child: {
            yes: 1,
            no: nil,
          },
          no: nil,
          normal: 'asd' ,
        }

        new_hash = HashUtil.deep_compact(hash)

        expect(new_hash).to eq({
          child: {
            yes: 1,
          },
          normal: 'asd',
        })
      end

      it 'does not change the existing hashes' do
        hash = {
          child: {
            yes: 1,
            no: nil,
          },
          no: nil,
          normal: 'asd' ,
        }

         HashUtil.deep_compact(hash)

         expect(hash).to eq({
           child: {
             yes: 1,
             no: nil,
           },
           no: nil,
           normal: 'asd' ,
         })
      end
    end

  end
end

