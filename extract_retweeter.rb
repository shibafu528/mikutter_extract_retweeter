# -*- coding: utf-8 -*-

Plugin.create(:extract_retweeter) do
  defextractcondition(:retweeter, name: 'リツイートしたユーザ名', operator: true, args: 1) do |argument, message: raise, operator: raise, &compare|
    message.retweeted_by.any? { |u| compare.(u.idname, argument) }
  end
end

