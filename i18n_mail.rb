# Place this file in the lib folder of your application
# In the mailers you want to use it you just add: include I18nMail
#
# Example:
# with_locale :nl do
#   mail :to => 'foo@bar.com', :subject => I18n.t(:translated)
# end
#
# By default it will fallback to I18n.default_locale

module I18nMail
  protected
  def with_locale locale=I18n.default_locale, &block
    begin
      original_locale = I18n.locale
      I18n.locale = locale
      yield
    ensure
      I18n.locale = original_locale
    end
  end
end
