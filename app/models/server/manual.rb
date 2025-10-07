# frozen_string_literal: true

class Server::Manual < Server
  before_validation :apply_defaults

  def provider_backed?
    false
  end

  def bootstrap_metadata
    @bootstrap_metadata ||= {
      bootstrappable: false,
      uuid: uuid,
      lsblk: lsblk,
    }
  end

  private

  def apply_defaults
    self.product = product.presence || "manual"
    self.data_center = data_center.presence || "manual"
    self.status = status.presence || "unknown"
  end
end
