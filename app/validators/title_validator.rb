class TitleValidator < ActiveModel::Validator
  def validate(record)
    if [/Won't Believe/, /Secret/, /Top/, /Guess/].none? { |word| word.match(record.title) }
      record.errors.add :base, 'Must be clickbait!'
    end
  end
end
