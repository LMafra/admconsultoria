class ContactForm < MailForm::Base

  attributes :name,  :validate => true
  attributes :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attributes :phone
  attributes :company_name
  attributes :message
   def headers
    {
      :subject => "My Contact Form",
      :to => "chagas.lucas.mafra@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
