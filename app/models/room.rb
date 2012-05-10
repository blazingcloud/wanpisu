class Room < ActiveRecord::Base
  def contacts
    
    gdocsession = GoogleDrive.login(google_user, google_password)
    ws = gdocsession.spreadsheet_by_key(google_spreadsheet_key).worksheets[0]
    rows = ws.rows
    headers = rows.first
    contacts_list = []
    rows[1..-1].each do |row|
      contact_hash = {}
      headers.each_with_index do |header, i|
        contact_hash[header.to_sym] = row[i]
      end
      contacts_list << contact_hash
    end
    contacts_list
  end
end
