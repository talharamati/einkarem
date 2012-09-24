class ConstantsInitializer
  REQUEST_STATUS = {
      pending: {
          id: 1,
          title: I18n.t('requests.statuses.pending')
      },
      treatment: {
          id: 2,
          title: I18n.t('requests.statuses.treatment')
      },
      approved: {
          id: 3,
          title: I18n.t('requests.statuses.approved')
      },
      declined: {
          id: 4,
          title: I18n.t('requests.statuses.declined')
      }
  }
  REQUEST_STATUS_ARRAY = REQUEST_STATUS.values.map { |a| a.values }
end